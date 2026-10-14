import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { NgForm } from '@angular/forms';
import { UserAuthService } from './user-auth.service';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  PATH_OF_API = "http://localhost:8080";

  requestHeader = new HttpHeaders(
    { "No-Auth": "True"}
  );

  constructor(
    private httpclient: HttpClient,
    private userAuthService: UserAuthService
  ) { }

  public login(loginData:NgForm["value"]) {
    return this.httpclient.post(this.PATH_OF_API + "/auth/login2", loginData, { headers: this.requestHeader })
  }

  public roleMatch(allowedRoles: Array<string>): boolean {
    let isMatch = false;
    const userRole: any = this.userAuthService.getRole();

    if(userRole != null) {
      let i = 0;
      while(i < allowedRoles.length && isMatch === false) {
        if(userRole === allowedRoles[i]) {
          isMatch = true;
        }
        i++;
      }
    }

    return isMatch;
  }
}
