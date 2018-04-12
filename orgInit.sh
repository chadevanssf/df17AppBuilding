sfdx msm:org:create -f config/project-scratch-def.json -d 1 -s --json -u appdev -o work.shop
sfdx force:source:push
sfdx force:user:permset:assign -n VolunteeringApp
sfdx force:data:tree:import -p data/masterImportPlan.json
sfdx msm:user:password:set -l User -g User -p sfdx1234 --json
sfdx force:apex:execute -f scripts/setup.cls
sfdx force:org:open
