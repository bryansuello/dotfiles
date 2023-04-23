  //html
  "favicon": {
    "scope": "html",
    "prefix": "favicon",
    "body": ["<link rel='icon' type='image/x-icon' href='$0'>"],
    "description": "favicon code"
  },
  //javascript
  "arrow function": {
    "scope": "javascript,typescript",
    "prefix": "arrow",
    "body": ["($1) => {$2}"],
    "description": "arrow function template"
  },
  "console.log": {
    "scope": "javascript,typescript",
    "prefix": "cl",
    "body": ["console.log($0);"],
    "description": "console.log template"
  },
  "querySelector": {
    "scope": "javascript,typescript",
    "prefix": "dqs",
    "body": ["document.querySelector('$0');"],
    "description": "query selector template"
  },
  "querySelectorAll": {
    "scope": "javascript,typescript",
    "prefix": "dqsa",
    "body": ["document.querySelectorAll('$0');"],
    "description": "query selectorAll template"
  },
  "getElementById": {
    "scope": "javascript,typescript",
    "prefix": "dgi",
    "body": ["document.getElementById('$0');"],
    "description": "getElementById template"
  }
