/*
 * Licensed to The Apereo Foundation under one or more contributor license
 * agreements. See the NOTICE file distributed with this work for
 * additional information regarding copyright ownership.
 *
 * The Apereo Foundation licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
*/

alter table course_demand alter critical drop default;
alter table course_demand alter critical type integer using case when critical then 1 else 0 end;
alter table course_demand alter critical set default 0;
alter table course_demand alter critical_override type integer using case when critical_override then 1 when not critical_override then 0 else null end;
alter table advisor_crsreq alter critical type integer using case when critical then 1 when not critical then 0 else null end;

/*
 * Update database version
 */

update application_config set value='229' where name='tmtbl.db.version';

commit;
