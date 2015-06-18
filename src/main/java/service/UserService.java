package service;

import dao.UserDao;
import entity.UserInfoEntity;

/**
 * Created by yangchen on 2015/6/18.
 */
public class UserService {

    public String getMethod(UserInfoEntity user, String getUrl){
        UserDao userDao = new UserDao();
        userDao.setGET_URL(getUrl);
        String returnMsg = userDao.getMethod(user);
        return returnMsg;
    }

    public String postMethod(UserInfoEntity user, String postUrl){
        UserDao userDao = new UserDao();
        userDao.setPOST_URL(postUrl);
        String returnMsg = userDao.postMethod(user);
        return returnMsg;
    }
}
