package util;


import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

public class Utils {

    //获取路径
    public static String getBasePath(HttpServletRequest request) {
        int port = request.getServerPort();
        return request.getScheme() + "://" + request.getServerName()
                + (port == 80 ? "" : (":" + port))
                + request.getContextPath();
    }
}
