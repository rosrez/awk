BEGIN {
    target = "the";
}
{
    s = index($0, target);      # returns the index of the first occurrence of target in $0 - the current line
    if ( s == 0 ) {
        print;
    } else {
        print substr($0, 1, s-1) substr($0, s + length(target));    # print everything except the (first!) match
    }
}
