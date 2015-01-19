TASKMIN     := 1
TASKMAX		:= 385
ROUNDMAX	:= 5

CMDSEP		:= ;
TASKIDS 	:= $(shell seq $(TASKMIN) $(TASKMAX))
ROUNDS 		:= $(shell seq 1 ${ROUNDMAX})

SUBDIRT		:= $(foreach taskidi,  ${TASKIDS}, taskid_$(shell printf "%03d" ${taskidi}))
SUBDIRTR	:= $(foreach subdirti, ${SUBDIRT}, $(foreach roundi, ${ROUNDS}, ${subdirti}_$(shell printf "%03d" ${roundi})))


.PHONY: subdirectories clean start $(SUBDIRTR)

subdirectories: $(SUBDIRTR)
start:
	$(foreach taskobj, $(SUBDIRTR), (nohup make -C ./task_indep/$(taskobj) &)  $(CMDSEP))
$(SUBDIRTR):
	rm -rf ./task_indep/$@ && mkdir -p ./task_indep/$@
	cp -r ./5002/task_template/* ./task_indep/$@/
	expr substr $@ 8 3 > ./task_indep/$@/dat/taskid.txt
	make -C ./task_indep/$@/dat/
clean:
	rm -rf ./task_indep
