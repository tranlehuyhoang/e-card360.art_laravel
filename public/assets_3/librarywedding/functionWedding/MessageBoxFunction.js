function Handle_MessageBox(SHEET_ID, SHEET_TITLE, NAME_COL, MESSAGE_COL, PUBLIC_COL, PUBLIC_text) {
    let SHEET_RANGE = 'A1:O1000';
    let FULL_URL = ('https://docs.google.com/spreadsheets/d/' + SHEET_ID + '/gviz/tq?sheet=' + SHEET_TITLE + '&range=' + SHEET_RANGE);
    fetch(FULL_URL)
        .then(res => res.text())
        .then(rep => {
            let data = JSON.parse(rep.substr(47).slice(0, -2));

            let MessageBox = document.getElementById('MessageBox');
            let length = data.table.rows.length;
            for (let i = (length - 1); i > 0; i--) {
                try {
                    if ((data.table.rows[i].c[PUBLIC_COL].v) == PUBLIC_text || PUBLIC_text == "NULL") {
                        let MessageBox_div = document.createElement('div');
                        MessageBox_div.classList.add("MessageBox-item")
                        let MessageBox_h2 = document.createElement('h2');
                        MessageBox_h2.classList.add("MessageBox-item-name")
                        let text_h2 = document.createTextNode(data.table.rows[i].c[NAME_COL].v);
                        MessageBox_h2.appendChild(text_h2)
                        let MessageBox_p = document.createElement('p');
                        MessageBox_p.classList.add("MessageBox-item-message")
                        let text_p = document.createTextNode(data.table.rows[i].c[MESSAGE_COL].v);
                        MessageBox_p.appendChild(text_p)

                        MessageBox_div.append(MessageBox_h2, MessageBox_p)
                        MessageBox.appendChild(MessageBox_div)
                    }
                }
                catch (error) {
                    continue
                }

            }

        })
}

function Refesh_MessageBox(BUTTON_ID, SHEET_ID, SHEET_TITLE, NAME_COL, MESSAGE_COL, PUBLIC_COL, PUBLIC_text) {
    $(document).ready(function () {
        $(BUTTON_ID).click(function () {
            setTimeout(function () {
                $("#MessageBox").load(location.href + " #MessageBox>*", "");
                Handle_MessageBox(SHEET_ID, SHEET_TITLE, NAME_COL, MESSAGE_COL, PUBLIC_COL, PUBLIC_text)
            }, 2000)

        });
    });
}

function run_MessageBox(BUTTON_ID, SHEET_ID, SHEET_TITLE, NAME_COL, MESSAGE_COL, PUBLIC_COL, PUBLIC_text) {
    Refesh_MessageBox(BUTTON_ID, SHEET_ID, SHEET_TITLE, NAME_COL, MESSAGE_COL, PUBLIC_COL, PUBLIC_text);
    Handle_MessageBox(SHEET_ID, SHEET_TITLE, NAME_COL, MESSAGE_COL, PUBLIC_COL, PUBLIC_text);
}