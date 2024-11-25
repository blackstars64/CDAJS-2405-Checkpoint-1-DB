import Arr from "../arr";

describe("Array", () => {
	it("should create an array", () => {
		const newArray = new Arr();
		expect(newArray.value).toHaveLength(0);
	});

	it("should add an element to the array", () => {
		const newArray = new Arr();
		const result = newArray.push("a");

		expect(newArray.value).toHaveLength(1);
		expect(result).toEqual(1);
		expect(newArray.value[0]).toEqual("a");
	});

	it("should remove the last element from the array", () => {
		const newArray = new Arr();
		newArray.push("a");
		newArray.push("b");
		newArray.push("c");

		const result = newArray.pop();

		expect(result).toEqual("c");
		expect(newArray.value).toHaveLength(2);
		expect(newArray.value).toEqual(["a", "b"]);

		newArray.pop();
		newArray.pop();

		expect(newArray.value).toHaveLength(0);
		expect(newArray.pop()).toBeUndefined();
	});

	it("should remove the first element from the array", () => {
		const newArray = new Arr();
		newArray.push("a");
		newArray.push("b");
		newArray.push("c");

		const result = newArray.shift();

		expect(result).toEqual("a");
		expect(newArray.value).toHaveLength(2);
		expect(newArray.value).toEqual(["b", "c"]);

		newArray.shift();
		newArray.shift();

		expect(newArray.value).toHaveLength(0);
		expect(newArray.shift()).toBeUndefined();
	});
});
