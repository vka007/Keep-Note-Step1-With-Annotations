package com.stackroute.keepnote;

import com.stackroute.keepnote.controller.NoteController;
import com.stackroute.keepnote.model.Note;
import com.stackroute.keepnote.repository.NoteRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration
public class MyConfig
{
    @Bean
    @Scope("prototype")
    public Note note()
    {
        Note note=new Note();
        note.setNoteId(1);
        note.setNoteTitle("Spring");
        note.setNoteStatus("active");
        note.setNoteContent("Welcome to S.T.A.R. Labs");
        return note;
    }
    /*@Bean
    public Note springnote()
    {
        Note note=new Note();
        return note;
    }
    @Bean
    public NoteController noteController()
    {
        NoteController noteController=new NoteController();
        return noteController;
    }*/
    @Bean
    public NoteRepository noteRepository()
    {
        return new NoteRepository();
    }
}
