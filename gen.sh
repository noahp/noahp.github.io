#!/usr/bin/env bash

set -ex

# generate build directory
rm -rf build
mkdir -p build

# for each file in posts
# 1. run npx marked
# 2. run combine the header, body, and footer into final html
# 4. add path to index.md
# 5. update index.html
POST_LIST=$(find posts -name "*.md" | sort --reverse)

function generate_html() {
    _post="$1"
    _post_name="build/$(basename "$_post" .md).html"
    npx marked "$_post" > "$_post_name.tmp"
    cat static/header.template.html "$_post_name.tmp" static/footer.template.html > "$_post_name"
    rm "$_post_name.tmp"
}

# run the generation in parallel, see https://stackoverflow.com/a/48213967
for _i in ${POST_LIST}; do
    generate_html "$_i" &
done
wait

# update index
echo "# Posts" > build/index.md
for _post in ${POST_LIST}; do
    _post_name="$(basename --suffix=.md "$_post")"
    _post_name_title="$(echo "$_post_name" | tr '_' ' ')"
    echo "- [$_post_name_title]($_post_name.html)" >> build/index.md
done

npx marked --input build/index.md --output build/index.html.tmp
cat static/header.template.html build/index.html.tmp static/footer.template.html > build/index.html
rm build/index.html.tmp
