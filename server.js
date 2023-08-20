const express = require('express');
const robot = require('robotjs');
const os = require('os');

const app = express();
const port = 3000;
const networkInterfaces = os.networkInterfaces();
const ipv4Interfaces = networkInterfaces['en0'] || networkInterfaces['eth0'] || networkInterfaces['wlan0'] || [];
let localIPv4Address = null;

for (const iface of ipv4Interfaces) {
    if (iface.family === 'IPv4' && !iface.internal) {
        localIPv4Address = iface.address;
        break;
    }
}

app.use(express.json());

app.post('/touch', (req, res) => {
    const intValue = req.body.intValue;
    if (intValue >= 0 && intValue <= 9) {
        robot.keyTap('numpad_' + intValue);
    } else if (intValue === 11) {
        robot.keyTap('.');
    } else {
        console.log('Invalid input value');
    }

    res.sendStatus(200);
});

app.listen(port, () => {
    console.log(`Server/PC is listening on port ${port}`);
    console.log(`Please input ${localIPv4Address} in IP field.`);
});

