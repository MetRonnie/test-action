const {execSync} = require('action-utils');

execSync('bash --noprofile --norc -eo pipefail delete-branch.sh', {verbose: true})
