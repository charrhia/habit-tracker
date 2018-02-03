import React, { Component } from 'react';

class ChartContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
    }
  }


  render() {
    return(

      <div id="charting">
        <h1>Analytics</h1>

        <div id="action-list">

          <button>Weekly Report</button>
          <button>Monthly Report</button>
          <button>Annual Report</button>
          
        </div>



      </div>
    )
  }}

  export default ChartContainer;
