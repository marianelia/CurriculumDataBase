SELECT groups.������, subjects.�������, curriculum.�������, teachers.���, ref_type_of_classes.����_���_�������, ref_form_of_control.�����_��������,curriculum.����;
FROM groups,subjects,teachers,ref_type_of_classes, ref_form_of_control, curriculum WHERE;
curriculum.������_id=groups.id AND groups.������="�8�-01�-19";
AND curriculum.���_���_�������_id=ref_type_of_classes.id;
AND curriculum.�������_id=subjects.id;
AND curriculum.�������������_id=teachers.id;
AND curriculum.�����_��������_id=ref_form_of_control.id