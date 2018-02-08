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


    // const data = [
    //   {name: Object.keys(inputs)[1], 'Day 2': inputs[Object.keys(inputs)[1]]},
    //   {name: Object.keys(inputs)[2], 'Day 3': inputs[Object.keys(inputs)[2]]},
    //   {name: Object.keys(inputs)[3], 'Day 4': inputs[Object.keys(inputs)[3]]},
    //   {name: Object.keys(inputs)[4], 'Day 5': inputs[Object.keys(inputs)[4]]},
    //   {name: Object.keys(inputs)[5], 'Day 6': inputs[Object.keys(inputs)[5]]},
    //   {name: Object.keys(inputs)[6], 'Day 7': inputs[Object.keys(inputs)[6]]},
    //   {name: Object.keys(inputs)[7], 'Day 1': inputs[Object.keys(inputs)[7]]},
    // ];


    const data = [
      {name: 'Page A', uv: 4000, pv: 2400, amt: 2400},
      {name: 'Page B', uv: 3000, pv: 1398, amt: 2210},
      {name: 'Page C', uv: 2000, pv: 9800, amt: 2290},
      {name: 'Page D', uv: 2780, pv: 3908, amt: 2000},
      {name: 'Page E', uv: 1890, pv: 4800, amt: 2181},
      {name: 'Page F', uv: 2390, pv: 3800, amt: 2500},
      {name: 'Page G', uv: 3490, pv: 4300, amt: 2100},
];

    return(

      <div id="graphs">

        <h2>Weekly Report</h2>

        <LineChart width={600} height={300} data={data}
            margin={{top: 5, right: 30, left: 20, bottom: 5}}>
       <XAxis dataKey="name"/>
       <YAxis/>
       <CartesianGrid strokeDasharray="3 3"/>
       <Tooltip/>
       <Legend />
       <Line type="monotone" dataKey="pv" stroke="#8884d8" activeDot={{r: 8}}/>
       <Line type="monotone" dataKey="uv" stroke="#82ca9d" />
      </LineChart>

        {/* <BarChart width={700} height={250} data={data}>
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
        </BarChart> */}

      </div>
    )
  }}

  export default WeeklyReportTile;
