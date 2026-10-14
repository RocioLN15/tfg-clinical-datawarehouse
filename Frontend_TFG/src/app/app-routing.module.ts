import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { GerenteComponent } from './gerente/gerente.component';
import { JefeComponent } from './jefe/jefe.component';
import { ForbiddenComponent } from './forbidden/forbidden.component';
import { AuthGuard } from './_auth/auth.guard';

const routes: Routes = [
  { path: 'login', component: LoginComponent },
  {
    path: '',
    redirectTo: 'login',
    pathMatch: 'full'
  },
  { path: 'gerente', component: GerenteComponent, canActivate: [AuthGuard], data: { roles: ['GERENTE'] } },
  { path: 'jefe', component: JefeComponent, canActivate: [AuthGuard], data: { roles: ['JEFE_CARDIOVASCULAR'] } },
  { path: 'forbidden', component: ForbiddenComponent },
  {
    path: '**',
    redirectTo: 'login',
    pathMatch: 'full'
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
