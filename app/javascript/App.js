import React, { Component } from 'react';
import ChartContainer from './containers/ChartContainer';

import swal from 'sweetalert';


class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
    }
  }

  render() {
    return(
      <div>
        <ChartContainer
        />
      </div>
    )
  }}

  export default App;
