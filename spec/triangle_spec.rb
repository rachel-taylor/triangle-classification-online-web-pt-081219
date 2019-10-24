Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@rachel-taylor 
1
08alexisadorn/Flatiron-OO-Ruby
 Code Issues 0 Pull requests 0 Projects 0 Wiki Security Insights
Flatiron-OO-Ruby/triangle-classification-v-000/spec/triangle_spec.rb
@alexisadorn alexisadorn oo-labs
0675b55 on May 17, 2017
64 lines (47 sloc)  2.05 KB
  
describe 'Triangle' do

  it 'knows that equilateral triangles have equal sides' do
    expect(Triangle.new(2, 2, 2).kind).to eq(:equilateral)
  end

  it 'knows that larger equilateral triangles also have equal sides' do
    expect(Triangle.new(10, 10, 10).kind).to eq(:equilateral)
  end

  it 'knows that isosceles triangles have last two sides equal' do
    expect(Triangle.new(3, 4, 4).kind).to eq(:isosceles)
  end

  it 'knows that isosceles triangles have first and last sides equal' do
    expect(Triangle.new(4, 3, 4).kind).to eq(:isosceles)
  end

  it 'knows that isosceles triangles have two first sides equal' do
    expect(Triangle.new(4, 4, 3).kind).to eq(:isosceles)
  end

  it 'knows that isosceles triangles have in fact exactly two sides equal' do
    expect(Triangle.new(10, 10, 2).kind).to eq(:isosceles)
  end

  it 'knows that scalene triangles have no equal sides' do
    expect(Triangle.new(3, 4, 5).kind).to eq(:scalene)
  end

  it 'knows that scalene triangles have no equal sides at a larger scale too' do
    expect(Triangle.new(10, 11, 12).kind).to eq(:scalene)
  end

  it 'knows that scalene triangles have no equal sides in descending order either' do
    expect(Triangle.new(5, 4, 2).kind).to eq(:scalene)
  end

  it 'knows that very small triangles are legal' do
    expect(Triangle.new(0.4, 0.6, 0.3).kind).to eq(:scalene)
  end

  it 'knows that triangles with no size are illegal' do
    expect{Triangle.new(0, 0, 0).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles with negative sides are illegal' do
    expect{Triangle.new(3, 4, -5).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal' do
    expect{Triangle.new(1, 1, 3).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 2' do
    expect{Triangle.new(2, 4, 2).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 3' do
    expect{Triangle.new(7, 3, 2).kind}.to raise_error(TriangleError)
  end

end
© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
