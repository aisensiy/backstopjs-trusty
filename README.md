# Backstopjs-trusty

Run your backstopjs scenarios in Ubuntu 14.04 using BackstopJS 2.0.6.

## Requirements

* `backstop-start` in your `package.json` `scripts`. Which is used to start server which is serving files for scenarios.
* `backstop.json` in your project.
* make sure you have all your node dependencies installed locally :)

## Globals

* `http-server` (https://www.npmjs.com/package/http-server)[https://www.npmjs.com/package/http-server] is exposed so you can run it in `backstop-start`

## Usage

### Generate reference images

* `docker run -t atoto/backstopjs-trusty -v $PWD:/app`
* `docker run -t atoto/backstopjs-trusty -v $PWD:/app reference -i` - generate references in incremental mode

### Test against reference images

* `docker run -t atoto/backstopjs-trusty -v $PWD:/app test`


### Example

#### Package.json
```json
{
  "scripts": {
    "backstop-start": "npm run build-storybook; http storybook-static -p 6006 &"
  }
}
```
