SELECT groups.группа, subjects.предмет, curriculum.семестр, teachers.фио, ref_type_of_classes.виды_ауд_занятий, ref_form_of_control.форма_контроля,curriculum.часы;
FROM groups,subjects,teachers,ref_type_of_classes, ref_form_of_control, curriculum WHERE;
curriculum.группа_id=groups.id AND groups.группа="М8О-01Б-19";
AND curriculum.вид_ауд_занятий_id=ref_type_of_classes.id;
AND curriculum.предмет_id=subjects.id;
AND curriculum.преподаватель_id=teachers.id;
AND curriculum.форма_контроля_id=ref_form_of_control.id