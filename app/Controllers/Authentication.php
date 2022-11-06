<?php

namespace App\Controllers;

class Authentication extends BaseController {

    public function index() {
        $data['title'] = "E-Cuti | Login";
        return view('authentication/login', $data);
    }

    public function forgot_password() {
        $data['title'] = "E-Cuti | Forgot Password";
        return view('authentication/forgot-password', $data);
    }

}
