/// @function string_wrap(text, max_width)
/// @param text
/// @param max_width
/// @returns array of lines

function string_wrap(_text, _max_width)
{
   var words = string_split(_text, " ");
    var lines = [];
    var line = "";

    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];

        // Tenta adicionar a próxima palavra
        var test_line = (line == "") ? word : line + " " + word;

        // Se passar da largura máxima, quebra antes
        if (string_width(test_line) > _max_width) {
            if (line == "") {
                // Palavra sozinha é maior que a largura → força quebra por caracteres
                var sub_line = "";
                for (var j = 1; j <= string_length(word); j++) {
                    var partial = string_copy(word, 1, j);
                    if (string_width(partial) > _max_width) {
                        array_push(lines, sub_line);
                        sub_line = string_char_at(word, j);
                    } else {
                        sub_line = partial;
                    }
                }
                line = sub_line;
            } else {
                array_push(lines, line);
                line = word;
            }
        } else {
            line = test_line;
        }
    }

    if (line != "") array_push(lines, line);

    return lines;
}
