import React, { Component } from 'react';

import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, BarChart, Bar} from 'recharts';


class WeeklyReportTile extends Component {
  constructor(props) {
    super(props);
    this.state = {
    }
  }


  render() {

    let goals = this.props.goals;
    let inputs = this.props.inputs;

    const data = [

      {name: Object.keys(inputs)[0], 'Day 1': inputs[Object.keys(inputs)[0]]},
      {name: Object.keys(inputs)[1], 'Day 2': inputs[Object.keys(inputs)[1]]},
      {name: Object.keys(inputs)[2], 'Day 3': inputs[Object.keys(inputs)[2]]},
      {name: Object.keys(inputs)[3], 'Day 4': inputs[Object.keys(inputs)[3]]},
      {name: Object.keys(inputs)[4], 'Day 5': inputs[Object.keys(inputs)[4]]},
      {name: Object.keys(inputs)[5], 'Day 6': inputs[Object.keys(inputs)[5]]},
      {name: Object.keys(inputs)[6], 'Day 7': inputs[Object.keys(inputs)[6]]}
    ];


    return(

      <div id="graphs">

        <h2>Weekly Report</h2>

        <BarChart width={700} height={250} data={data}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="name" />
            <YAxis />
            <Tooltip />
            <Legend />
          <Bar dataKey='Day 1' fill="#87AC4E" />
          <Bar dataKey="Day 2" fill="#d884c7" />
          <Bar dataKey="Day 3" fill="#0066ff" />
          <Bar dataKey="Day 4" fill="#cccc00" />
          <Bar dataKey="Day 5" fill="#ff5050" />
          <Bar dataKey="Day 6" fill="#00ffff" />
          <Bar dataKey="Day 7" fill="#ff9900" />
        </BarChart>

      </div>
    )
  }}

  export default WeeklyReportTile;
