/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package penjadwalan;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author ehazard
 */
public class datapembelajaran extends javax.swing.JInternalFrame {

     Connection con;
    Statement stat;
    ResultSet rs;
    String sql;
    /**
     * Creates new form childform2
     */
    public datapembelajaran() throws SQLException {
        initComponents();
        koneksi ObjKoneksi = new koneksi();
        con = ObjKoneksi.bukaKoneksi();
        stat = con.createStatement();
        //UpdateTabel();
        tampil_database();
        jTextField1.enable(false);
        tampil_database1();
    }
    

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        jLabel4 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jComboBox1 = new javax.swing.JComboBox<String>();
        jTextField6 = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jComboBox2 = new javax.swing.JComboBox<String>();
        jComboBox3 = new javax.swing.JComboBox<String>();

        setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        setMaximizable(true);
        setResizable(true);
        setTitle("Data Pembelajaran");
        setFrameIcon(null);
        setMaximumSize(new java.awt.Dimension(214, 214));
        setPreferredSize(new java.awt.Dimension(900, 500));
        setVisible(true);

        jLabel2.setFont(new java.awt.Font("Noto Sans", 0, 14)); // NOI18N
        jLabel2.setText("Id Pelajaran");

        jLabel3.setFont(new java.awt.Font("Noto Sans", 0, 14)); // NOI18N
        jLabel3.setText("Id Pengajar");

        jLabel1.setFont(new java.awt.Font("Noto Sans", 0, 14)); // NOI18N
        jLabel1.setText("Nama Pelajaran");

        jTextField1.setText("Auto");
        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });

        jButton1.setText("SIMPAN");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("HAPUS");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Noto Sans", 0, 14)); // NOI18N
        jLabel5.setText("Search");

        jTextField4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextField4KeyReleased(evt);
            }
        });

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "Id Pembelajaran", "Id Pengajar", "Nama Pengajar", "Nama Kelas", "Jatah mengajar", "Mata Pelajaran"
            }
        ));
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        jTable2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null}
            },
            new String [] {
                "Id pengajar", "Nama Pengajar", "Jatah_Mengajar"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Object.class, java.lang.Object.class, java.lang.String.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jTable2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable2MouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(jTable2);

        jLabel4.setFont(new java.awt.Font("Noto Sans", 0, 14)); // NOI18N
        jLabel4.setText("jam/minggu");

        jLabel6.setFont(new java.awt.Font("Noto Sans", 0, 14)); // NOI18N
        jLabel6.setText("Jatah Mengajar");

        jLabel7.setFont(new java.awt.Font("Noto Sans", 0, 14)); // NOI18N
        jLabel7.setText("Nama Kelas");

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "--Pilih Kelas--", "X-IPA1", "X-IPA2", "X-IPS1", "X-IPS2", "XI-IPA1", "XI-IPA2", "XI-IPS1", "XI-IPS2", "XII-IPA1", "XII-IPA2", "XII-IPS1", "XII-IPS2" }));

        jLabel8.setFont(new java.awt.Font("Noto Sans", 0, 14)); // NOI18N
        jLabel8.setText("Nama Pengajar");

        jComboBox2.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "--Pilih Jam--", "1", "2" }));

        jComboBox3.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "--Pilih Pelajaran--", "Matematika (Peminatan)", "Pendidikan Agama Islam", "Pendidikan Agama Katholik", "Pendidikan Agama Kristen", "Pendidikan Agama Hindu", "PKn", "Bahasa Indonesia", "Bahasa Inggris", "Bhs & Sastra Inggris", "Matematika", "TIK", "Fisika", "Fisika (Peminatan)", "Lintas Minat", "Biologi", "Biologi (Peminatan)", "Kimia", "Kimia (Peminatan)", "Kimia (Lintas Minat)", "Sejarah", "Sejarah (Peminatan)", "Geografi", "Geografi (Peminatan)", "Ekonomi", "Ekonomi (Peminatan)", "Ekonomi (Lintas Minat)", "Sosiologi", "Sosiologi (Peminatan)", "Kesenian", "Prakarya & Kewirausahaan", "Penjaskes", "Bahasa Prancis", "Bahasa Jawa" }));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jScrollPane1)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(jLabel3)
                            .addComponent(jLabel8)
                            .addComponent(jLabel7)
                            .addComponent(jLabel1)
                            .addComponent(jLabel6)
                            .addComponent(jLabel5))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 23, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jComboBox2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel4))
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(jTextField2, javax.swing.GroupLayout.DEFAULT_SIZE, 193, Short.MAX_VALUE)
                                        .addComponent(jTextField1)
                                        .addComponent(jTextField6))
                                    .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, 193, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jComboBox3, javax.swing.GroupLayout.PREFERRED_SIZE, 192, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 86, Short.MAX_VALUE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jTextField4, javax.swing.GroupLayout.PREFERRED_SIZE, 192, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 458, Short.MAX_VALUE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 97, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, Short.MAX_VALUE)))))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jTextField6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel7)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jComboBox3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jComboBox2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 235, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jTextField4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5)
                    .addComponent(jButton2)
                    .addComponent(jButton1))
                .addGap(18, 18, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        getAccessibleContext().setAccessibleParent(this);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTable2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable2MouseClicked
        // TODO add your handling code here:
        int i = jTable2.getSelectedRow();
   DefaultTableModel dtm = (DefaultTableModel) jTable2.getModel();
   jTextField2.setText(dtm.getValueAt(i,0).toString());
   jTextField6.setText(dtm.getValueAt(i, 1).toString());
    }//GEN-LAST:event_jTable2MouseClicked

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        save();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        hapus();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        // TODO add your handling code here:
        int i = jTable1.getSelectedRow();
   DefaultTableModel dtm = (DefaultTableModel) jTable1.getModel();
   jTextField1.enable(false);
   jTextField1.setText(dtm.getValueAt(i,0).toString());
   jTextField2.setText(dtm.getValueAt(i, 1).toString());
   jTextField6.setText((String) dtm.getValueAt(i, 2));
   jComboBox1.setSelectedItem(dtm.getValueAt(i, 3));
   jComboBox2.setSelectedItem(dtm.getValueAt(i, 4));
   jComboBox3.setSelectedItem(dtm.getValueAt(i, 5));
    }//GEN-LAST:event_jTable1MouseClicked

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void jTextField4KeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyReleased
        // TODO add your handling code here:
        DefaultTableModel tabelnyo = new DefaultTableModel();
        tabelnyo.addColumn("Id pembelajaran");
        tabelnyo.addColumn("Id Pengajar");
        tabelnyo.addColumn("Nama Pengajar");
        tabelnyo.addColumn("Nama Kelas");
        tabelnyo.addColumn("Jatah Mengajar");
        tabelnyo.addColumn("Mata Pelajaran");
        try{
        String sql = "Select * from pembelajaran where jatah_mengajar like '" + jTextField4.getText() + "'" +
        "or nama_pengajar like '%" + jTextField4.getText() + "%'";
        ResultSet rs = stat.executeQuery(sql);
        while (rs.next()) {
        tabelnyo.addRow(new Object[]{
        rs.getString(1),
        rs.getString(2),
        rs.getString(3),
        rs.getString(4),
        rs.getString(5),
        rs.getString(6),
        });
        }
        jTable1.setModel(tabelnyo);
        }catch (Exception e){
        }  
    }//GEN-LAST:event_jTextField4KeyReleased


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JComboBox<String> jComboBox1;
    private javax.swing.JComboBox<String> jComboBox2;
    private javax.swing.JComboBox<String> jComboBox3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField6;
    // End of variables declaration//GEN-END:variables

     //menampilkan isi database ke jtabel
    public void tampil_database1(){
        //UpdateTabel();
        try {
            sql = "SELECT * FROM pengajar;";
            rs = stat.executeQuery(sql);
            DefaultTableModel dtm = (DefaultTableModel) jTable2.getModel();
        dtm.setRowCount(0);
        String [] data = new String[6];
        int i = 1;
       
        while(rs.next()) {
            data[0] = rs.getString("idpengajar");
            data[1] = rs.getString("nama_pengajar");
            data[2] = rs.getString("jatah_mengajar_seminggu");
            dtm.addRow(data);
            i++;
            
        }
        }
        catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
        public void kosong(){
        jComboBox2.setSelectedIndex(0);
        jTextField2.setText("");
        jComboBox3.setSelectedIndex(0);
        jComboBox1.setSelectedIndex(0);
        jTextField1.setText("Auto");
        jTextField6.setText("");
    }
        public void hapus(){
            String id = "";
            try {
                id = jTextField1.getText();
                  String sql = "DELETE FROM pembelajaran where idpembelajaran='"+id+"'";
                //String sql = "insert into pembelajaran values('"+id+"','"+idpengajar+"','"+nama2+"','"+jatah+"','"+pelajaran+"')";
                Statement st = con.createStatement();
                st.executeUpdate(sql);
                JOptionPane.showMessageDialog(null, "Data BERHASIL terhapus" , "Informasi", JOptionPane.INFORMATION_MESSAGE);
                kosong();
                tampil_database();
                
            } catch (Exception e) {
                //JOptionPane.showMessageDialog(null, "Data GAGAL tersimpan" , "Informasi", JOptionPane.INFORMATION_MESSAGE);
                System.out.println(e);
            }
        }
          //menampilkan isi database ke jtabel
    public void tampil_database(){
        //UpdateTabel();
        try {
            sql = "SELECT * FROM pembelajaran;";
            rs = stat.executeQuery(sql);
            DefaultTableModel dtm = (DefaultTableModel) jTable1.getModel();
        dtm.setRowCount(0);
        String [] data = new String[6];
        int i = 1;
       
        while(rs.next()) {
            data[0] = rs.getString("idpembelajaran");
            data[1] = rs.getString("idpengajar");
            data[2] = rs.getString("nama_pengajar");
            data[3] = rs.getString("nama_kelas");
            data[4] = rs.getString("jatah_mengajar");
            data[5] = rs.getString("nama_pelajaran");
            dtm.addRow(data);
            i++;
            
        }
        }
        catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
    private void save(){
     if(jTextField2.getText().trim().equals("")){
            JOptionPane.showMessageDialog(null,"Maaf, id pengajar belum di isi!");
            jTextField2.requestFocus();
        }
        else if(jTextField1.getText().trim().equals("Auto")){
            String id = "", idpengajar = "", pelajaran = "",jatah="",nama2="",pengajar="";
            int  nama1,pelajaran1,jatah1;
            try {
                id = jTextField1.getText();
                idpengajar = jTextField2.getText();
                pelajaran1 = jComboBox3.getSelectedIndex();
                //pelajaran
                if(pelajaran1==0){pelajaran="--Pilih Kelas--";}
                if(pelajaran1==1){pelajaran="Matematika (Peminatan)";}
                if(pelajaran1==2){pelajaran="Pendidikan Agama Islam";} 
                if(pelajaran1==3){pelajaran="Pendidikan Agama Katholik";} 
                if(pelajaran1==4){pelajaran="Pendidikan Agama Kristen";}
                if(pelajaran1==5){pelajaran="Pendidikan Agama Hindu";}
                if(pelajaran1==6){pelajaran="PKn";}
                if(pelajaran1==7){pelajaran="Bahasa Indonesia";}
                if(pelajaran1==8){pelajaran="Bahasa Inggris";}
                if(pelajaran1==9){pelajaran="Bhs & Sastra Inggris";}
                if(pelajaran1==10){pelajaran="Matematika";}
                if(pelajaran1==11){pelajaran="TIK";}
                if(pelajaran1==12){pelajaran="Fisika";}
                if(pelajaran1==13){pelajaran="Fisika (Peminatan)";}
                if(pelajaran1==14){pelajaran="Lintas Minat";}
                if(pelajaran1==15){pelajaran="Biologi";}
                if(pelajaran1==16){pelajaran="Biologi (Peminatan)";}
                if(pelajaran1==17){pelajaran="Kimia";}
                if(pelajaran1==18){pelajaran="Kimia (Peminatan)";}
                if(pelajaran1==19){pelajaran="Kimia (Lintas Minat)";}
                if(pelajaran1==20){pelajaran="Sejarah";}
                if(pelajaran1==21){pelajaran="Sejarah (Peminatan)";}
                if(pelajaran1==22){pelajaran="Geografi";}
                if(pelajaran1==23){pelajaran="Geografi (Peminatan)";}
                if(pelajaran1==24){pelajaran="Ekonomi";}
                if(pelajaran1==25){pelajaran="Ekonomi (Peminatan)";}
                if(pelajaran1==26){pelajaran="Ekonomi (Lintas Minat)";}
                if(pelajaran1==27){pelajaran="Sosiologi";}
                if(pelajaran1==28){pelajaran="Sosiologi (Peminatan)";}
                if(pelajaran1==29){pelajaran="Kesenian";}
                if(pelajaran1==30){pelajaran="Prakarya & Kewirausahaan";}
                if(pelajaran1==31){pelajaran="Penjaskes";}
                if(pelajaran1==32){pelajaran="Bahasa Prancis";}
                if(pelajaran1==33){pelajaran="Bahasa Jawa";}
                jatah1=jComboBox2.getSelectedIndex();
                //Jam
                if(jatah1==0){jatah="--Pilih Jam--";}
                if(jatah1==1){jatah="1";}
                if(jatah1==2){jatah="2";}
                nama1=jComboBox1.getSelectedIndex();
                pengajar=jTextField6.getText();
                if(nama1==0){nama2="--Pilih Kelas--";}
                if(nama1==1){nama2="X-IPA1";}
                if(nama1==2){nama2="X-IPA2";}
                if(nama1==3){nama2="X-IPS1";}
                if(nama1==4){nama2="X-IPS2";}
                if(nama1==5){nama2="XI-IPA1";}
                if(nama1==6){nama2="XI-IPA2";}
                if(nama1==7){nama2="XI-IPS1";}
                if(nama1==8){nama2="XI-IPS2";}
                if(nama1==9){nama2="XII-IPA1";}
                if(nama1==10){nama2="XII-IPA2";} 
                 if(nama1==11){nama2="XII-IPS1";}
                  if(nama1==12){nama2="XII-IPS2";}
                  String sql = "INSERT INTO `pembelajaran` (`idpembelajaran`, `idpengajar`, `nama_pengajar`,`nama_kelas`, `jatah_mengajar`, `nama_pelajaran`) VALUES (NULL, '"+idpengajar+"','"+pengajar+"', '"+nama2+"', '"+jatah+"', '"+pelajaran+"');";
                //String sql = "insert into pembelajaran values('"+id+"','"+idpengajar+"','"+nama2+"','"+jatah+"','"+pelajaran+"')";
                Statement st = con.createStatement();
                st.executeUpdate(sql);
                //JOptionPane.showMessageDialog(null, "Data BERHASIL tersimpan" , "Informasi", JOptionPane.INFORMATION_MESSAGE);
                kosong();
                tampil_database();
                
            } catch (Exception e) {
                //JOptionPane.showMessageDialog(null, "Data GAGAL tersimpan" , "Informasi", JOptionPane.INFORMATION_MESSAGE);
                System.out.println(e);
            }
        }else{
            String id="",idpengajar="",pelajaran="",jatah="",nama2="",pengajar="";
        int nama1,pelajaran1,jatah1;
        try {
            id = jTextField1.getText();
                idpengajar = jTextField2.getText();
                pelajaran1 = jComboBox3.getSelectedIndex();
                //pelajaran
                if(pelajaran1==0){pelajaran="--Pilih Kelas--";}
                if(pelajaran1==1){pelajaran="Matematika (Peminatan)";}
                if(pelajaran1==2){pelajaran="Pendidikan Agama Islam";} 
                if(pelajaran1==3){pelajaran="Pendidikan Agama Katholik";} 
                if(pelajaran1==4){pelajaran="Pendidikan Agama Kristen";}
                if(pelajaran1==5){pelajaran="Pendidikan Agama Hindu";}
                if(pelajaran1==6){pelajaran="PKn";}
                if(pelajaran1==7){pelajaran="Bahasa Indonesia";}
                if(pelajaran1==8){pelajaran="Bahasa Inggris";}
                if(pelajaran1==9){pelajaran="Bhs & Sastra Inggris";}
                if(pelajaran1==10){pelajaran="Matematika";}
                if(pelajaran1==11){pelajaran="TIK";}
                if(pelajaran1==12){pelajaran="Fisika";}
                if(pelajaran1==13){pelajaran="Fisika (Peminatan)";}
                if(pelajaran1==14){pelajaran="Lintas Minat";}
                if(pelajaran1==15){pelajaran="Biologi";}
                if(pelajaran1==16){pelajaran="Biologi (Peminatan)";}
                if(pelajaran1==17){pelajaran="Kimia";}
                if(pelajaran1==18){pelajaran="Kimia (Peminatan)";}
                if(pelajaran1==19){pelajaran="Kimia (Lintas Minat)";}
                if(pelajaran1==20){pelajaran="Sejarah";}
                if(pelajaran1==21){pelajaran="Sejarah (Peminatan)";}
                if(pelajaran1==22){pelajaran="Geografi";}
                if(pelajaran1==23){pelajaran="Geografi (Peminatan)";}
                if(pelajaran1==24){pelajaran="Ekonomi";}
                if(pelajaran1==25){pelajaran="Ekonomi (Peminatan)";}
                if(pelajaran1==26){pelajaran="Ekonomi (Lintas Minat)";}
                if(pelajaran1==27){pelajaran="Sosiologi";}
                if(pelajaran1==28){pelajaran="Sosiologi (Peminatan)";}
                if(pelajaran1==29){pelajaran="Kesenian";}
                if(pelajaran1==30){pelajaran="Prakarya & Kewirausahaan";}
                if(pelajaran1==31){pelajaran="Penjaskes";}
                if(pelajaran1==32){pelajaran="Bahasa Prancis";}
                if(pelajaran1==33){pelajaran="Bahasa Jawa";}
                jatah1=jComboBox2.getSelectedIndex();
                //Jam
                if(jatah1==0){jatah="--Pilih Jam--";}
                if(jatah1==1){jatah="1";}
                if(jatah1==2){jatah="2";}
                nama1=jComboBox1.getSelectedIndex();
                pengajar=jTextField6.getText();
                if(nama1==0){nama2="--Pilih Kelas--";}
                if(nama1==1){nama2="X-IPA1";}
                if(nama1==2){nama2="X-IPA2";}
                if(nama1==3){nama2="X-IPS1";}
                if(nama1==4){nama2="X-IPS2";}
                if(nama1==5){nama2="XI-IPA1";}
                if(nama1==6){nama2="XI-IPA2";}
                if(nama1==7){nama2="XI-IPS1";}
                if(nama1==8){nama2="XI-IPS2";}
                if(nama1==9){nama2="XII-IPA1";}
                if(nama1==10){nama2="XII-IPA1";} 
                 if(nama1==11){nama2="XII-IPS1";}
                  if(nama1==12){nama2="XII-IPS2";}
                String sql = "update pembelajaran set idpembelajaran='"+id+"',idpengajar='"+idpengajar+"',nama_pengajar='"+pengajar+"',nama_kelas='"+nama2+"',jatah_mengajar='"+jatah+"',nama_pelajaran='"+pelajaran+"' where idpembelajaran='"+id+"'";
                Statement st = con.createStatement();
                st.executeUpdate(sql);
                //JOptionPane.showMessageDialog(null, "Data BERHASIL tersimpan" , "Informasi", JOptionPane.INFORMATION_MESSAGE);
                kosong();
                tampil_database();
        } catch (Exception e) {
            System.out.println(e);
        }
        }
}
}
