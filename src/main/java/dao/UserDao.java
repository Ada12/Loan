package dao;

import org.json.JSONObject;
import org.json.JSONException;
import entity.LoanInfoEntity;
import entity.UserInfoEntity;

import javax.json.JsonException;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by yangchen on 2015/6/18.
 */
public class UserDao {
    private String GET_URL;
    private String POST_URL;

    public String getGET_URL() {
        return GET_URL;
    }

    public String getPOST_URL() {
        return POST_URL;
    }

    public void setGET_URL(String GET_URL) {
        this.GET_URL = GET_URL;
    }

    public void setPOST_URL(String POST_URL) {
        this.POST_URL = POST_URL;
    }

    public String getMethod(UserInfoEntity user){
        String getURL = String.format(GET_URL,user.getUsername(),user.getPassword());
        try {
            URL getUrl = new URL(getURL);
            getUrl = new URL(getURL);
            HttpURLConnection connection = (HttpURLConnection) getUrl.openConnection();
            connection.setDoOutput(true);
            connection.setDoInput(true);
            connection.setRequestMethod("GET");
            connection.setUseCaches(false);
            connection.setInstanceFollowRedirects(true);
            connection.setRequestProperty("user-agent","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            connection.setRequestProperty("X-AVOSCloud-Application-Id", "6hoae79n3t8w2h43vaan6xoli6ukkikbxevy4xcia82jphd0");
            connection.setRequestProperty("X-AVOSCloud-Application-Key", "xwc4jeev2jhl96gjv8f4lzfa2ry3yxcvlh8fc3tpbavknyyw");
            connection.connect();
            if(connection.getResponseCode()==200) {
                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                String line;
               // StringBuilder result = new StringBuilder();
                String result = "";
                while ((line = reader.readLine()) != null) {
                    result = result + line;
                }
                JSONObject object = new JSONObject(result);
                String returnMsg = object.getString("sessionToken");
                reader.close();
                connection.disconnect();
                return returnMsg;
            }
            else {
                return null;
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        } catch (ProtocolException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String postMethod(UserInfoEntity user){
        try {
            URL postUrl = new URL(POST_URL);
            HttpURLConnection connection = (HttpURLConnection) postUrl.openConnection();
            connection.setDoOutput(true);
            connection.setDoInput(true);
            connection.setRequestMethod("POST");
            connection.setUseCaches(false);
            connection.setInstanceFollowRedirects(true);
            connection.setRequestProperty("user-agent","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            connection.setRequestProperty("X-AVOSCloud-Application-Id", "6hoae79n3t8w2h43vaan6xoli6ukkikbxevy4xcia82jphd0");
            connection.setRequestProperty("X-AVOSCloud-Application-Key", "xwc4jeev2jhl96gjv8f4lzfa2ry3yxcvlh8fc3tpbavknyyw");
            connection.setRequestProperty("Content-Type", "application/json");
            DataOutputStream dataOutStream = new DataOutputStream(connection.getOutputStream());
            JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("username", user.getUsername());
                jsonObject.put("email", user.getEmail());
                jsonObject.put("password", user.getPassword());
            } catch (JSONException ex) {
                Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            }
            String content = jsonObject.toString();
            dataOutStream.writeBytes(content);
            dataOutStream.flush();
            dataOutStream.close();
            if(connection.getResponseCode()==201)
            {

                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                String line;
                StringBuilder result = new StringBuilder();
                while ((line = reader.readLine()) != null) {
                    result.append(line);
                }
                try {
                    JSONObject object = new JSONObject(result.toString());
                    String returnMsg = object.getString("sessionToken");
//                    String sessionToken = responseJSONObject.getString("sessionToken");
//                    HttpSession s=request.getSession();
//                    s.setAttribute("sessionToken",sessionToken);
                    return returnMsg;
                } catch (JSONException ex) {
                    Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
                    return null;
                }
            }
            else
            {
                return null;
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        } catch (ProtocolException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
