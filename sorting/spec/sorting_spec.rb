require 'rubygems'
require 'rspec'
require_relative '../sorting.rb'

describe 'Sort' do
  describe '.selection_sort' do

    context 'when the argument is empty' do
      it "returns an empty array" do
        expect(Sort.selection_sort([])).to eq([])
      end
    end

    context 'when there is only one argument' do
      it "returns the array as is" do
        expect(Sort.selection_sort([1])).to eq([1])
      end
    end

    context 'when the arguments are already in order' do
      it "returns the same array" do
        expect(Sort.selection_sort([1,5,7,10])).to eq([1,5,7,10])
      end
    end

    context 'when the arguments are not in order' do
      it "sorts the array from smallest to largest" do
        expect(Sort.selection_sort([7,3])).to eq([3,7])
        expect(Sort.selection_sort([8,3,98,4])).to eq([3,4,8,98])
      end
    end

    context 'when the array has negative numbers' do
      it "sorts the array from smallest to largest with negative numbers first" do
        expect(Sort.selection_sort([0,-4])).to eq([-4,0])
        expect(Sort.selection_sort([1,6,-4,-10])).to eq([-10,-4,1,6])
      end
    end

    context 'when there are duplicate elements' do
      it "sorts the smallest to largest and keeps duplicates adjacent to each other" do
        expect(Sort.selection_sort([5,5,1,1,8,6,3,5])).to eq([1,1,3,5,5,5,6,8])
      end
    end
  end
end
