<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| HybridAuth settings
| -------------------------------------------------------------------------
| Your HybridAuth config can be specified below.
|
| See: https://github.com/hybridauth/hybridauth/blob/v2/hybridauth/config.php
*/
$config['hybridauth'] = array(
  "providers" => array(
    // openid providers
    "OpenID" => array(
      "enabled" => FALSE,
    ),    
    "Google" => array(
      "enabled" => TRUE,
      "keys" => array("id" => "your-app-id-here", "secret" => "your-app-secret-here"),
    ),
    "Facebook" => array(
      "enabled" => TRUE,
      "keys" => array("id" => "your-app-id-here", "secret" => "your-app-secret-here"),
      "trustForwarded" => FALSE,
    ),
    "Twitter" => array(
      "enabled" => TRUE,
      "keys" => array("id" => "your-app-id-here", "secret" => "your-app-secret-here"),
      "includeEmail" => FALSE,
    )
  ),
  // If you want to enable logging, set 'debug_mode' to true.
  // You can also set it to
  // - "error" To log only error messages. Useful in production
  // - "info" To log info and error messages (ignore debug messages)
  "debug_mode" => ENVIRONMENT === 'development',
  // Path to file writable by the web server. Required if 'debug_mode' is not false
  "debug_file" => APPPATH . 'logs/hybridauth.log',
);