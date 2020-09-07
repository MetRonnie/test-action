const {execSync} = require('action-utils');

console.log(process.env.GITHUB_ACTION_PATH);

execSync('delete-branch', {verbose: true});
