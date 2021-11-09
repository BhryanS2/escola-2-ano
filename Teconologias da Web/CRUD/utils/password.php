<!-- encode password with bcrypt -->
<?php
  class Password {
    public function verify($password, $hash) {
      return password_verify($password, $hash);
    }
    
    public function encodePassword($password) {
      $options = [
        'cost' => 12,
      ];
      $hash = password_hash($password, PASSWORD_BCRYPT, $options);
      return $hash;
    }

    public function decodePassword($hash) {
      $password = password_get_info($hash);
      return $password;
    }

    
  }
  $passwordClass = new Password();
?>