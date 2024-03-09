const controller ={};

controller.list = (req, res) => {
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM students', (err, students) => {
            if (err) {
                res.json(err);
            }
            res.render('students', {
                data: students

            });
            
            });
    });
};

controller.save = (req, res) => {
    const data = req.body;

    req.getConnection((err,conn) => {
        conn.query('INSERT INTO students set ?',[data], (err, students) =>{
            res.redirect('/');


        });

    })


};
controller.edit = (req, res) => {
    const {id} = req.params;
    req.getConnection((err,conn) => {
        conn.query('SELECT * FROM students WHERE id = ?',[id], (err, students) => {
            res.render('students_edit', {
                data: students [0]
            })
        });
   });      

};

controller.update = (req, res) => {
    const {id} = req.params;
    const newstudents = req.body;
    req.getConnection((err,conn) => {
     conn.query('UPDATE  students  set ? WHERE id = ?',[newstudents, id], (err,rows) => {
        res.redirect('/',);
    });
});      

};



controller.delete = (req, res) => {
    const {id} = req.params;

req.getConnection((err,conn) => {
    conn.query('DELETE FROM students WHERE id = ?',[id], (err, rows) =>{
    
        res.redirect('/');
    });

})


};

module.exports = controller;