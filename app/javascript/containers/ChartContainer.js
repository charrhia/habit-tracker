import React, { Component } from 'react';
import WeeklyReportTile from '../components/WeeklyReportTile';

class ChartContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      goals: {},
      inputs: {}
    }
  }


// goals and inputs fetch
componentDidMount() {
  fetch(`/api/v1/goals.json`)
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => {
      return response.json()
    })
    .then(body => {
      this.setState({ goals: body })
    })

    fetch(`/api/v1/inputs.json`)
    .then(response => {
      return response.json()
    })
    .then(body => {
      this.setState({ inputs: body })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
}



  render() {

let goals = this.state.goals;
let inputs = this.state.inputs;

    return(

      <div id="charting">
        <h1>Analytics</h1>

        <div id="action-list">

          <button>Weekly Report</button>
          <button>Monthly Report</button>
          <button>Annual Report</button>

        </div>

        <WeeklyReportTile
          goals={goals}
          inputs={inputs}
         />


      </div>
    )
  }}

  export default ChartContainer;
