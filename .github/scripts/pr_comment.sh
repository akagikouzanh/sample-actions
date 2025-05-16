#!/bin/bash
set -eu

greet_output="${GREET_OUTPUT:-<no output>}"
here_output="${HERE_OUTPUT:-<no output>}"
bye_output="${BYE_OUTPUT:-<no output>}"

escape() {
  printf "%s\n" "$1" | sed 's/`/\\`/g'
}

greet=$(escape "$greet_output")
here=$(escape "$here_output")
bye=$(escape "$bye_output")

body=$(cat <<EOF
### Greeting

<details>
<summary>結果を見る</summary>

\`\`\`
$greet
\`\`\`

</details>

### Here

<details>
<summary>結果を見る</summary>

\`\`\`
$here
\`\`\`

</details>

### Bye

<details>
<summary>結果を見る</summary>

\`\`\`
$bye
\`\`\`

</details>
EOF
)

gh pr comment "$PR_NUMBER" --body "$body"
