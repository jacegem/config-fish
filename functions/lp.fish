function lp --description 'logseq publish'
  set -x file "/Users/jace/Downloads/publicExport.zip"

  if not test -e "$file"
    exit
  end

  # ditto -V -x -k --sequesterRsrc --rsrc ~/Downloads/publicExport.zip $LOGSEQ_HUGO/content
  ditto -V -x -k --sequesterRsrc --rsrc "$file" $LOGSEQ_HUGO/content

  sed -ri '' 's/\(https:\/\/i.imgur.com/\(\/assets/g' $LOGSEQ_HUGO/content/pages/**/*.md
  sed -ri '' 's/{{[^<].*}}//g' $LOGSEQ_HUGO/content/pages/**/*.md

  git -C $LOGSEQ_HUGO add .
  git -C $LOGSEQ_HUGO commit -m 'publicExport'
  git -C $LOGSEQ_HUGO push
end
