RSpec.configure do |config|
  # AF::Noid 2.x stores minter state in the database by default, and
  # CC's spec_helper clears the database as the test suite runs. This
  # puts CC into a broken state while the test suite is running. The
  # patch below makes sure there is always at least one MinterState
  # instance in the database.
  config.before(:each) do
    MinterState.create(
      namespace: ActiveFedora::Noid.config.namespace,
      template: ActiveFedora::Noid.config.template
    )
  end
end
