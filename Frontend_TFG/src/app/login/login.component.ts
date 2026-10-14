import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { UserService } from '../_services/user.service';
import { UserAuthService } from '../_services/user-auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  alert: boolean = false;

  constructor(
    private userService: UserService,
    private userAuthService: UserAuthService,
    private router: Router
  ) { }

  ngOnInit(): void {
      
  }

  login(loginForm:NgForm) {
    this.userService.login(loginForm.value).subscribe({
      next: (response:any)=> {
        this.userAuthService.setRole(response.user.role);
        this.userAuthService.setToken(response.jwtToken);

        const role = response.user.role;
        if(role === 'GERENTE') {
          this.router.navigate(['/gerente']);
        } else if(role === 'JEFE_CARDIOVASCULAR') {
          this.router.navigate(['/jefe']);
        }
      },
      error: (e) => {
        console.error(e);
        this.alert = true;
      }
    });
    
  }
}
