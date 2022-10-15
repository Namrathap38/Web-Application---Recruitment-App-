package Service;

import Model.Login;

public interface LoginService {
int login(String userid,String password);
int forgot(Login log);
int change(Login log);
}
