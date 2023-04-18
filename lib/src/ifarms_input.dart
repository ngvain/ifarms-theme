part of '../ifarms_theme.dart';

class IFInput {
  Widget baseInput({
    String? title,
    String? hint,
    String? initialValue,
    String? prefixIcon = 'assets/svg/note_tracking.svg',
    TextEditingController? controller,
    FormFieldValidator? validator,
    bool? longText = false,
    bool? showPrefix = false,
    bool? showClearbutton = false,
    bool? readOnly = false,
    bool? enabled = true,
    bool? required = true,
    TextInputType? inputType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (title != null) Text(title, style: IFTheme.textStyle.bodyReg),
            if (!required!)
              Text(
                '(Jika ada)',
                style: IFTheme.textStyle.bodyReg.copyWith(
                  color: IFTheme.color.grey,
                ),
              ),
          ],
        ),
        TextFormField(
          maxLines: 5,
          minLines: longText! ? 5 : 1,
          controller: controller,
          initialValue: initialValue,
          keyboardType: inputType,
          validator: validator,
          readOnly: readOnly!,
          enabled: enabled,
          decoration: InputDecoration(
            filled: true,
            fillColor: enabled! ? IFTheme.color.white : IFTheme.color.lightGrey,
            labelStyle: TextStyle(color: IFTheme.color.black),
            hintText: hint,
            hintStyle: IFTheme.textStyle.h2Reg,
            contentPadding: const EdgeInsets.all(15.0),
            errorStyle: IFTheme.textStyle.smallReg.copyWith(
              color: IFTheme.color.red,
            ),
            prefixIcon: showPrefix!
                ? Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: IFTheme.color.lightGrey),
                        ),
                      ),
                      child: SvgPicture.asset(
                        prefixIcon!,
                        height: ScreenUtil().setHeight(20),
                        width: ScreenUtil().setWidth(20),
                        colorFilter: ColorFilter.mode(
                          IFTheme.color.blue,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  )
                : null,
            suffixIcon: showClearbutton!
                ? IconButton(
                    onPressed: () => controller?.clear(),
                    icon: SvgPicture.asset(
                      'assets/svg/close_circle.svg',
                      height: ScreenUtil().setHeight(20),
                      colorFilter: ColorFilter.mode(
                        IFTheme.color.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                  )
                : null,
            alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(width: 1, color: IFTheme.color.lightGrey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(width: 1, color: IFTheme.color.lightGrey),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(width: 1, color: IFTheme.color.red),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: IFTheme.color.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}