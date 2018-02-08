import React, { Component } from 'react';

import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, BarChart, Bar, Radar, RadarChart, PolarGrid, PolarAngleAxis, PolarRadiusAxis} from 'recharts';


class MonthlyReportTile extends Component {
  constructor(props) {
    super(props);
    this.state = {
    }
  }


  render() {

    let inputs = this.props.inputs;

    // const data = [
    //   {name: "Goal 1", 'Goal 1': 2}
    // ];


    const data = [
    { subject: 'Math', A: 120, B: 110, fullMark: 150 },
    { subject: 'Chinese', A: 98, B: 130, fullMark: 150 },
    { subject: 'English', A: 86, B: 130, fullMark: 150 },
    { subject: 'Geography', A: 99, B: 100, fullMark: 150 },
    { subject: 'Physics', A: 85, B: 90, fullMark: 150 },
    { subject: 'History', A: 65, B: 85, fullMark: 150 },
];

    return(

      <div id="graphs">

        <h2>Monthly Report</h2>


        <RadarChart cx={300} cy={250} outerRadius={150} width={600} height={500} data={data}>
        <PolarGrid />
        <PolarAngleAxis dataKey="subject" />
        <PolarRadiusAxis/>
        <Radar name="Mike" dataKey="A" stroke="#8884d8" fill="#8884d8" fillOpacity={0.6}/>
      </RadarChart>

        {/* <BarChart width={700} height={250} data={data}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="name" />
            <YAxis />
            <Tooltip />
            <Legend />
          <Bar dataKey='Goal 1' fill="#87AC4E" />
          {/* <Bar dataKey="Day 2" fill="#d884c7" />
          <Bar dataKey="Day 3" fill="#0066ff" />
          <Bar dataKey="Day 4" fill="#cccc00" />
          <Bar dataKey="Day 5" fill="#ff5050" />
          <Bar dataKey="Day 6" fill="#00ffff" />
          <Bar dataKey="Day 7" fill="#ff9900" /> */}
        {/* </BarChart> */}

      </div>
    )
  }}

  export default MonthlyReportTile;
