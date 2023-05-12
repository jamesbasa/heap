require '../lib/heap.rb'

RSpec.describe Heap do
  describe "#initialize" do
    let(:heap) { Heap.new(arr, true) }
    let(:arr) { [1, 2, 3] }

    it "sets the instance vars" do
      expect(heap.array).to eq arr
      expect(heap.heap_size).to eq arr.length
    end
  end

  describe "#insert" do
    let(:heap) { Heap.new(arr, is_max) }

    context "for max heap" do
      let(:is_max) { true }

      context "when inserting into empty heap" do
        let(:arr) { [] }

        it "inserts values in correct order" do
          heap.insert(5)
          expect(heap.array).to eq [5]
        end
      end

      context "when inserting into non-empty heap" do
        let(:arr) { [4, 3, 2, 1] }

        it "inserts values in correct order" do
          heap.insert(5)
          expect(heap.array).to eq [5, 4, 2, 1, 3]
        end
      end
    end

    context "for min heap" do
      let(:is_max) { false }

      context "when inserting into empty heap" do
        let(:arr) { [] }

        it "inserts values in correct order" do
          heap.insert(5)
          expect(heap.array).to eq [5]
        end
      end

      context "when inserting into non-empty heap" do
        let(:arr) { [5, 6, 7, 8] }

        it "inserts values in correct order" do
          heap.insert(4)
          expect(heap.array).to eq [4, 5, 7, 8, 6]
        end
      end
    end
  end
end
