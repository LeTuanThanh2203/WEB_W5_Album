package murach.util;

import jakarta.servlet.http.Cookie;

public class CookieUtil {

    public static String getCookieValue(Cookie[] cookies, String cookieName) {
        String cookieValue = "";
        if (cookies != null && cookieName != null) {
            for (Cookie cookie : cookies) {
                if (cookieName.equalsIgnoreCase(cookie.getName())) {
                    cookieValue = cookie.getValue();
                    break;
                }
            }
        }
        return cookieValue;
    }
}
