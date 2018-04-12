sfdx force:org:create -f config/project-scratch-def.json -s -a vol -d 1
sfdx force:source:push
sfdx force:user:permset:assign -n VolunteeringApp
sfdx force:data:tree:import -p data/masterImportPlan.json
sfdx msm:user:password:set -l User -g User -p sfdx1234 --json
sfdx force:apex:execute -f scripts/setup.cls
sfdx force:org:open
