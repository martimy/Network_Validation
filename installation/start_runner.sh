RPC_SECRET=88808d97d501e651b0bf148d61c2b89d
HOST="129.173.143.143"
NAME="my-first-runner"

docker run --detach \
  --volume=/var/run/docker.sock:/var/run/docker.sock \
  --env=DRONE_RPC_PROTO=http \
  --env=DRONE_RPC_HOST=$HOST \
  --env=DRONE_RPC_SECRET=$RPC_SECRET \
  --env=DRONE_RUNNER_CAPACITY=2 \
  --env=DRONE_RUNNER_NAME=$NAME \
  --env=DRONE_UI_USERNAME=admin \
  --env=DRONE_UI_PASSWORD=martimy \
  --publish=3000:3000 \
  --restart=always \
  --name=runner \
  drone/drone-runner-docker:1
