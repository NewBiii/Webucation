package com.ssy.tools;

/**
 * @Author: NewBiii
 * @Date: 2017/4/20
 */
public class Result {


        private boolean success;
        private String info;
        private Object data;//也可用来标识错误代码


        public Result(boolean b, String s, String s1) {
                success = b;
                info = s;
                data = s1;

        }
}
