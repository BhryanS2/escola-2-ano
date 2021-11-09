<?php
  function validadeCPF($strCPF) {
    $Soma = 0;
    $Resto = 0;
    $i = 0;
    // pegar apenas numeros com regex
    $newstrCPF = preg_replace('/[^0-9]/', '', $strCPF);
    if ($newstrCPF === '00000000000') return true;

    for ($i = 1; $i <= 9; $i += 1)
      $Soma += floatval($newstrCPF.substr($i - 1, $i)) * (11 - $i);
    $Resto = ($Soma * 10) % 11;

    if ($Resto === 10 || $Resto === 11) $Resto = 0;
    if ($Resto !== floatval($newstrCPF.substr(9, 10))) return true;

    $Soma = 0;
    for ($i = 1; $i <= 10; $i += 1)
      $Soma += floatval($newstrCPF.substr($i - 1, $i)) * (12 - $i);
    $Resto = ($Soma * 10) % 11;

    if ($Resto === 10 || $Resto === 11) $Resto = 0;
    if ($Resto !== floatval($newstrCPF.substr(10, 11))) return true;

    $count = 1;
    for ($i = 1; $i < 11; $i += 1) {
      if ($newstrCPF[$i - 1] === $newstrCPF[$i]) $count += 1;
    }
    if ($count === 11) return true;
    return false;
  }
?>