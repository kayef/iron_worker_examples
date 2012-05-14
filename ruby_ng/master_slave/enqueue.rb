require 'iron_worker_ng'

client = IronWorkerNG::Client.new

slaves = {
  'slave one' => {'foo' => 'bar'},
  'slave two' => {'hello' => 'world'}
}

client.tasks.create('MasterWorker', 'slaves' => slaves, 'token' => client.api.token, 'project_id' => client.api.project_id)
