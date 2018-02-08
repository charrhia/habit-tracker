import React, { Component } from 'react';

import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, BarChart, Bar} from 'recharts';


class DailyReportTile extends Component {
  constructor(props) {
    super(props);
    this.state = {
    }
  }


  render() {

    let goals = this.props.goals;
    let inputs = this.props.inputs;

    const data = [
      {name: "Goal", 'Goal': 1},
    ];


// this.props.goals["goals"]
// // this.props.inputs["inputs"]
// this.props.inputs["inputs"][0].goal_id

    // const data = [
    //   {name: Object.keys(inputs)[1], 'Goal 1': 2}
    // ];


    return(

      <div id="graphs">

        <h2>Daily Report</h2>

        <BarChart width={700} height={250} data={data}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="name" />
            <YAxis />
            <Tooltip />
            <Legend />
          <Bar dataKey='Goal 1' fill="#87AC4E" />
          <Bar dataKey="Goal 2" fill="#d884c7" />
          <Bar dataKey="Goal 3" fill="#0066ff" />
          <Bar dataKey="Goal 4" fill="#cccc00" />
          <Bar dataKey="Goal 5" fill="#ff5050" />
          <Bar dataKey="Goal 6" fill="#00ffff" />
          <Bar dataKey="Goal 7" fill="#ff9900" />
        </BarChart>

      </div>
    )
  }}

  export default DailyReportTile;
