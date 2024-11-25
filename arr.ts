class Arr {
	value: string[] = [];

	push(el: string): number {
		const array = new Array(this.value.length + 1);

		for (let i = 0; i < this.value.length; i++) {
			array[i] = this.value[i];
		}
		array[this.value.length] = el;
		this.value = array;
		return this.value.length;
	}

	pop(): string | undefined {
		if (this.value.length === 0) {
			return undefined;
		}
		const array = new Array(this.value.length - 1);
		for (let i = 0; i < array.length; i++) {
			array[i] = this.value[i];
		}
		const removedElement = this.value[this.value.length - 1];
		this.value = array;
		return removedElement;
	}

	shift(): string | undefined {
		if (this.value.length === 0) {
			return undefined;
		}
		const array = new Array(this.value.length - 1);
		for (let i = 1; i < this.value.length; i++) {
			array[i - 1] = this.value[i];
		}
		const removedElement = this.value[0];
		this.value = array;
		return removedElement;
	}
}

export default Arr;
