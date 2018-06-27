import React, { Component } from 'react';

const defaultState = {
  type: '',
  typeError: false,
  quality: 0,
};

const types = [
  'Gorgonzola cheese',
  'Slice of Bread',
  'Tomato',
  'Grapefruit juice',
  'Gold ring',
  'Concert ticket',
];

class AddItem extends Component {
  state = defaultState;

  handleSubmit = e => {
    e.preventDefault();

    const { onAdd } = this.props;
    const { type, quality } = this.state;

    if (type) {
      onAdd(type, quality);
      this.setState(defaultState);
    } else {
      this.setState({ typeError: true });
    }
  }

  render() {
    const { type, typeError, quality } = this.state;

    return (
      <form
        className="add-item"
        onSubmit={this.handleSubmit}
      >
        <select
          className={['type', typeError && 'error'].join(' ')}
          value={type}
          onChange={e => this.setState({ type: e.target.value })}
        >
          <option value="">Choose an item</option>

          {types.map(type => (
            <option key={type} value={type}>{type}</option>
          ))}
        </select>

        <input
          className="quality"
          type="number"
          value={quality}
          onChange={e => this.setState({ quality: e.target.value })}
        />

        <button className="add" type="submit">Add</button>
      </form>
    );
  }
}

export default AddItem;
