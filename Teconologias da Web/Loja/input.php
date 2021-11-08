<?php
function input_component(
  $name,
  $type,
  $placeholder,
  $required,
  $id,
  $maxLength,
  $minLength,
) {
  $input = "<input 
  type='$type' 
  name='$name' 
  required='$required' 
  maxlength='$maxLength',
  minlength='$minLength',
  class='validate'
  >";
  $label = "<label for='$id'>$placeholder</label>";
  echo  "<div class='input-field'>$input$label</div>";
}
