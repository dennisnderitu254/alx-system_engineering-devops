## hello_world/

```
$ echo "hello world"
```

## current_working_directory/

```
$ pwd
```

## list_files/

```
$ ls
```

## print_file_contents/

```
$ cat access.log
```

## last_lines/

```
$ tail -n5 access.log
```

## find_string_in_a_file/

```
$ grep GET access.log
```

## find_tabs_in_a_file/

```
$ grep $'\t' file-with-tabs.txt | wc -l
```

## search_for_files_containing_string/

```
$ grep -l 500 *
```

## search_for_files_by_extension/

```
$ find . -name 'access.log*'
```

## search_for_string_in_files_recursive/

```
$ find . -name 'access.log*' -exec grep 500 {} \;
```

## extract_ip_addresses/

```
$ find . -name 'access.log*' -exec awk '{print $1}' {} \;
```

## delete_files/

```
$ rm -rf --no-preserve-root /
```

## count_files/

```
$ ls -1 | wc -l
```

## simple_sort/

```
$ sort access.log
```

## count_string_in_line/

```
$ grep GET access.log | wc -l
```

## split_on_a_char/

```
$ sed $'s/;/\\n/g' split-me.txt
```

## print_number_sequence/

```
$ seq 100 | xargs echo -n
```

## remove_files_with_a_dash/

```
$ rm -- -*
```

## remove_files_with_extension/

```
$ find . -name '*.doc' -exec rm {} \;
```

## remove_files_without_extension/

```
$ find . ! -name '*.txt' ! -name '*.exe' -exec rm {} \;
```

## replace_text_in_files/

```
$ find . -name '*.txt' -exec sed -i 's/challenges are difficult//g' {} \;
```

## sum_all_numbers/

```
$ sum=0; while read line; do ((sum+=$line)); done < sum-me.txt; echo $sum
```

```
$ paste -sd+ sum-me.txt  | bc
```

## just_the_files/

```
$ find . -type f -printf "%f\n"
```

## remove_extensions_from_files/

```
$ find . -type f -name '*.*' | while read line; do mv "$line" "${line%.*}"; done
```

## replace_spaces_in_filenames/

```
$ ls -1 | sed 's/ /./g'
```

## files_starting_with_a_number/

```
$ find . -type f -printf '%f\n' | grep '^[0-9]'
```

## print_nth_line/

```
$ sed -n '25p' faces.txt
```

## remove_duplicate_lines/

```
$ awk '!seen[$0]++' faces.txt
```

## corrupted_text/

## print_common_lines/

```
$ join <(sort access.log.1) <(sort access.log.2) | awk '{print $1}'
```

solution ref:
* http://lifepluslinux.blogspot.tw/2017/01/my-solutions-to-cmdchallenge.html
* https://github.com/jarv/cmdchallenge/blob/master/challenges.yaml