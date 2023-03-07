require 'rails_helper'

RSpec.describe Video do
  it 'video exists and has attributes' do
    data = {id: {videoId: "A6Hg35F"}, snippet: {title: "Sample Video"}}
    video = Video.new(data)

    expect(video).to be_instance_of(Video)
    expect(video.video_id).to eq("A6Hg35F")
    expect(video.title).to eq("Sample Video")
  end
end