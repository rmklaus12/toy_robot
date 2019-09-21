require 'spec_helper'

RSpec.describe ToyRobot::Simulator do
  let(:table) {ToyRobot::Table.new(5, 5) }
  subject { ToyRobot::Simulator.new(table) }

  it 'places the robot in a valid position' do
    expect(ToyRobot::Robot).to receive(:new)
      .with(0, 0, 'north')
      .and_return(double)
    subject.place(0, 0, 'north')
    expect(subject.robot).not_to be_nil
  end

  it 'cannot place robot on an invalid position' do
    expect(ToyRobot::Robot).not_to receive(:new)
    subject.place(5, 5, 'north')
    expect(subject.robot).to be_nil
  end
end