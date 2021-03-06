package com.testerhome.nativeandroid.utils;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

/**
 * Created by vclub on 15/10/24.
 */
public class DeviceUtil {
    /**
     * 隐藏软键盘
     */
    public static void hideSoftInput(Context ctx) {
        if (ctx != null) {
            InputMethodManager imm = ((InputMethodManager) ctx.getSystemService(Context.INPUT_METHOD_SERVICE));
            View view = ((Activity) ctx).getCurrentFocus();
            if (view != null) {
                imm.hideSoftInputFromWindow(view.getWindowToken(), InputMethodManager.HIDE_NOT_ALWAYS);
            }
        }
    }

    /**
     * 显示软键盘
     */
    public static void showSoftInput(Context ctx, View view) {
        // InputMethodManager.SHOW_FORCED);
        InputMethodManager imm = (InputMethodManager) ctx.getSystemService(Context.INPUT_METHOD_SERVICE);
        imm.showSoftInput(view, InputMethodManager.SHOW_FORCED);
    }
}
