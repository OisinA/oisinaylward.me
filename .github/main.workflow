workflow "Deploy" {
	on = "push"
}

action "build" {
	uses = "actions/docker/cli@master"
	args = "build -t oisinaylward.me:5000/personal-website ."
}

action "push" {
	uses = "actions/docker/cli@master"
	args = "push oisinaylward.me:5000/personal-website"
}
