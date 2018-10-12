function setup-lint
  npm install babel-eslint eslint eslint-plugin-prettier eslint-plugin-react prettier
  echo "parser: 'babel-eslint'
env:
  browser: true
  commonjs: true
  es6: true
  node: true
  jest: true
extends:
  - 'eslint:recommended'
  - 'plugin:react/recommended'
parserOptions:
  ecmaVersion: 8
  ecmaFeatures:
    experimentalObjectRestSpread: true
    jsx: true
  sourceType: module
plugins:
  - react
  - prettier
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
  prettier/prettier:
    - error
    - { singleQuote: true, jsxBracketSameLine: true }" > .eslintrc.yml
end
