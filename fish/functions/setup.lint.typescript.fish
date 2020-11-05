function setup.lint.typescript
  npm install -D eslint prettier @typescript-eslint/parser @typescript-eslint/eslint-plugin eslint-config-prettier eslint-plugin-prettier eslint-plugin-react
  echo "parser: '@typescript-eslint/parser'
parserOptions:
  ecmaVersion: 2021
  ecmaFeatures:
    experimentalObjectRestSpread: true
    jsx: true
  sourceType: module
settings:
  react:
    version: detect
env:
  browser: true
  commonjs: true
  es6: true
  node: true
  jest: true
plugins:
  - react
  - prettier
extends:
  - 'eslint:recommended'
  - 'plugin:react/recommended'
  - 'plugin:@typescript-eslint/recommended'
  - 'prettier/@typescript-eslint'
  - 'plugin:prettier/recommended'
rules:
  indent:
    - error
    - 2
  quotes:
    - error
    - single
  semi:
    - error
    - always
  linebreak-style:
    - error
    - unix
  no-console:
    - warn
    - { allow: ['info', 'error'] }
  react/prop-types:
    - disable" > .eslintrc.yml

    echo "singleQuote: true
trailingComma: all
jsxBracketSameLine: true" > .prettierrc
end
