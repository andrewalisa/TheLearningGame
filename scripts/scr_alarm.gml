written += string_char_at(global.text, typePos);

typePos++; 

if string_length(written) < string_length(global.text) {
    alarm[0] = typeTime;
}
