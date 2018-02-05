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

    //
    // inputsData = inputs.map((input) => {
    //
    // })



    // practice data until database is connected

    const data = [
      {name: 'Eat Healthy', "Eat Healthy": 3},
      {name: 'Exercise', "Exercise": 5},
      {name: 'Read', "Read": 6},
      {name: 'Code', "Code": 5},
      {name: 'Call', "Call": 5},
      {name: 'Clean', "Clean": 7},
      {name: 'Budget', "Budget": 6}
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
          <Bar dataKey="Eat Healthy" fill="#87AC4E" />
          <Bar dataKey="Exercise" fill="#d884c7" />
          <Bar dataKey="Read" fill="#0066ff" />
          <Bar dataKey="Code" fill="#cccc00" />
          <Bar dataKey="Call" fill="#ff5050" />
          <Bar dataKey="Clean" fill="#00ffff" />
          <Bar dataKey="Budget" fill="#ff9900" />

        </BarChart>


      </div>
    )
  }}

  export default WeeklyReportTile;
